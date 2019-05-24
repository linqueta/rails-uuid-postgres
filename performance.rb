# frozen_string_literal: true

Benchmark.ips do |x|
  x.report('UUID') { AuthorUuid.create(name: 'Lincoln Rodrigues') }
  x.report('Sequencial ID') { AuthorSequencialId.create(name: 'Lincoln Rodrigues') }
  x.compare!
end

# Warming up --------------------------------------
#                 UUID    40.000  i/100ms
#        Sequencial ID    26.000  i/100ms
# Calculating -------------------------------------
#                 UUID    315.518  (±28.2%) i/s -      1.520k in   5.156348s
#        Sequencial ID    304.672  (±35.1%) i/s -      1.404k in   5.053431s

# Comparison:
#                 UUID:      315.5 i/s
#        Sequencial ID:      304.7 i/s - same-ish: difference falls within error

Benchmark.ips do |x|
  x.report('UUID') { AuthorUuid.find('fffc7ac3-d43b-4c66-8210-512267968f80') }
  x.report('Sequencial ID') { AuthorSequencialId.find(8608) }
  x.compare!
end

# Warming up --------------------------------------
#                 UUID   599.000  i/100ms
#        Sequencial ID   741.000  i/100ms
# Calculating -------------------------------------
#                 UUID      7.273k (± 6.5%) i/s -     36.539k in   5.046010s
#        Sequencial ID      7.410k (± 4.5%) i/s -     37.050k in   5.010742s

# Comparison:
#        Sequencial ID:     7409.9 i/s
#                 UUID:     7272.7 i/s - same-ish: difference falls within error
