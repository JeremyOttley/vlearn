  const (
    prefix = "A"
    suffix = "E"
    ppv = "PPV_BV"
  )

fn main() {
  mut isbn := "978-1-4780-2737-9"
  product := prefix + isbn.split("-")[3] + suffix
  ppv_product := ppv + product
}
