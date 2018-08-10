include: "sfbase__users.view.lkml"
view: sf__users {
  extends: [sfbase__users]

# Create Filters

  filter: name_select {
    suggest_dimension: name
  }

# Create Dimensions

# Create Measures

}
