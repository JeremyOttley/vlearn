  const (
    prefix = "A"
    suffix = "E"
    ppv = "PPV_BV"
  )

fn main() {
  mut isbn := "978-1-4780-2737-9"
  pd := prefix + isbn.split("-")[3] + suffix
  ppd := ppv + prefix + isbn.split("-")[3] + suffix
}
