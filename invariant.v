fn insertion_point(xs []i32, x i32) i32 {

  mut lo := 0
  mut hi := xs.len

  for hi > lo {
    mid := lo + (hi - lo) / 2
    if x < xs[mid] {
      lo = mid
    } else {
      hi = mid
    }
  }
      
return lo
}

assert(insertion_point([1,2,3,4,5], 5) == 0)
