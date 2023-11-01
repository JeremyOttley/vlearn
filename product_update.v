  const (
    isbn = "978-1-4780-2737-9"
    prefix = "A"
    suffix = "E"
    ppv = "PPV_BV""
  )

fn main() {
  mut i := isbn
  pd := prefix + i.split("-")[3] + suffix
  ppd := ppv + prefix + i.split("-")[3] + suffix
}
