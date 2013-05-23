# NCBI Blast Results Parser

[![Code Climate](https://codeclimate.com/github/garethrees/ncbi_blast_results_parser.png)](https://codeclimate.com/github/garethrees/ncbi_blast_results_parser)

Parses useful information from the HTML response of an NCBI Blast.

## Current Methods

- `rid`: Parses a Request ID
- `wait`: Parses the suggested wait time before attempting to get results
- `status`: Parses the status of a Blast

## Usage

```ruby
rid = NCBIBlastResultsParser.rid(response)
#=> 'ABCD1234'

wait = NCBIBlastResultsParser.wait(response)
#=> 17

status = NCBIBlastResultsParser.status(response)
#=> 'READY'
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
