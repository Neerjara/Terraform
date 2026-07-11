module "web_nsg" {
 source = "../../modules/nsg"
 name = "web-nsg"
  rules = [
   {
     name = "SSH"
     port = 22    
},
   {
    name "HTTP"
    port = 80
}
  ]
}
