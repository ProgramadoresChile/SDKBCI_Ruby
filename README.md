BCI API Ruby Client
=================

An API client that comes handy to connect with BCI developers API.

## Setup

Install with `gem install bci` or add to your Gemfile :)

## Usage

Create a new client object with the api key in a hash:

```
client = Bci::Client.new({ key: YOUR_KEY })
```

The client is a proxy for the endpoints managers. Currently, there are four supported
sections of the BCI API:

1. Beneficios

To access the "beneficios" sections you can call this method on the client:

```
client.beneficios.api_method
```

`api_method` could be one of this:

- shopping: [GET] Access to the BCI shopping benefits info.
- store: [GET] Access to the BCI store benefits info.
- health_and_beauty: [GET] Access to the BCI health_and_beauty benefits info.
- online_sales: [GET] Access to the BCI online_sales benefits info.
- outdoors: [GET] Access to the BCI outdoors benefits info.
- flavors: [GET] Access to the BCI flavors benefits info.

2. Consumo

To access the "consumo" section you can call this method on the client:

```
client.consumo.api_method
```

`api_method` could be one of this:

- simulate(params): [POST] Access to the BCI consumo simulator. `params` is a hash object containing the required data according to BCI documentation.

3. Hipotecario

To access the "hipotecario" section you can call this method on the client:

```
client.hipotecario.api_method
```

`api_method` could be one of this:

- simulate(id, params): [POST] Access to the BCI hipotecario simulator.
`id` is a numeric identifier according to BCI documentation.
`params` is a hash object containing the required data according to BCI documentation.

- all: [GET] Access to the BCI list of all hipotecario products.

- find(id): [GET] Access to the detailed information of one of the hipotecario products.
`id` is a numeric identifier according to BCI documentation

- find_rates(id): [GET] Access to the rates of an hipotecario product.

4. Stats

To access the "stats" section you can call this method on the client:

```
client.stats.api_method
```

`api_method` could be one of this:

- indicators: [GET] Access to BCI economics indicators.

- branch_offices: [GET] Access to a detailed information about BCI branch offices.

- atm: [GET] Access to a detailed information about BCI ATMs (in spanish cajeros automáticos).

## Development

When hacking on this gem, the REPL `pry` comes in handy. You can load the
contents of the gem with `pry --gem`.

### Disclaimer

This was rushed for a Angelhack + BCI Labs + Programadores Chile hackathon so this doesn't have any tests :(. Yes, I know...shame on me. But feel free to contribute and make this gem better and better.

## Contributors

- Daniel Ochoa (@dochoaj)
