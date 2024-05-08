
variable "dashboard" {
  type = map(object({
    name        = string
    permissions = string
    pagename    = string
    pie = map(object({
      title  = string
      row    = number
      column = number
      width  = number
      height = number
      query  = string

    }))
    bar = map(object({
      title  = string
      row    = number
      column = number
      width  = number
      height = number
      query  = string

    }))
  }))
}
