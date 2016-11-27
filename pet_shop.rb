def pet_shop_name(hash)
  name = hash[:name]
  return name
end

def total_cash(hash)
  sum = hash[:admin][:total_cash]
  return sum
end

def add_or_remove_cash(hash, number)
  return hash[:admin][:total_cash] += number
end

def pets_sold(hash)
  return hash[:admin][:pets_sold]
end

def increase_pets_sold(hash, number)
  return hash[:admin][:pets_sold] += number
end

def stock_count(hash)
  result = hash[:pets].count
  return result
end


def pets_by_breed(hash, breed)
  counter = 0
  for pet in hash[:pets]
    if pet[:breed] == breed
      counter += 1
    end
  end
  return counter
end

def find_pet_by_name(hash, name)
  for pet in hash[:pets]
    return pet if pet[:name] == name
  end
    return nil
end

def remove_pet_by_name(hash, name)
  for element in hash[:pets]
     hash[:pets].delete(element) if element[:name] == name
  end
    return nil
end

def add_pet_to_stock(hash, new_hash)
  hash[:pets] << new_hash
end

def customer_pet_count(customer)
  result = customer[:pets].count
  return result
end


def add_pet_to_customer(customer, new_pet)
  customer[:pets] << new_pet
end

####################################################OPTIONALS##############################################################
def customer_can_afford_pet(customer, new_pet)
  return true if customer[:cash] >= new_pet[:price]
  return false
end

def sell_pet_to_customer(hash, pet, customer)
  for element in hash[:pets]
    if element[:name] == pet && customer[:cash] >= new_pet[:price]
      new_pet = element
      customer[:pets] << hash[:pets].delete(element)
      cash[:admin][:pets_sold] += 1
      charge = customer[:cash] - new_pet[:price]
      customer[:cash].to_i -= new_pet[:price].to_i
      hash[:admin][:total_cash] += charge
    else
      return nil
    end
  end
end











