def consolidate_cart(cart)
  quantity = 0
  cart.each do |item| if enditem.has_key?(:count)

  item[:count] += 1 
  else item[:count] = 1

  end
end

def apply_coupons(cart, coupons)
  # code here
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end

# Grocer
#   #consolidate_cart
#     adds a count of one to each item when there are no duplicates (FAILED - 1)
#     increments count when there are multiple items (FAILED - 2)
#   #apply_coupons
#     base case - with perfect coupon (number of items identical):
#       adds a new key, value pair to the cart hash called 'ITEM NAME W/COUPON' (FAILED - 3)
#       adds the coupon price to the property hash of couponed item (FAILED - 4)
#       adds the count number to the property hash of couponed item (FAILED - 5)
#       removes the number of discounted items from the original item's count (FAILED - 6)
#      remembers if the item was on clearance (FAILED - 7)
#    more advanced cases:
#      accounts for when there are more items than the coupon allows (FAILED - 8)
#      doesn't break if the coupon doesn't apply to any items (FAILED - 9)
#      can apply multiple coupons (FAILED - 10)
#      doesn't break if there is no coupon (FAILED - 11)
#      can increment coupon count if two are applied (FAILED - 12)
#  #apply_clearance
#    takes 20% off price if the item is on clearance (FAILED - 13)
#    does not discount the price for items not on clearance (FAILED - 14)
#    #checkout
#     base case (no clearance, no coupons)
#       calls on #consolidate_cart before calculating the total for one item (FAILED - 15)
#       calls on #apply_coupons after calling on #consolidate_cart when there is only one item in the cart (FAILED - 16)
#       calls on #apply_clearance after calling on #apply_coupons when there is only one item in the cart and no coupon (FAILED - 17)
#       calls on #apply_clearance after calling on #apply_coupons with multiple items and one coupon (FAILED - 18)
#       calls on #apply_clearance after calling on #apply_coupons with multiple items, coupons, and items are on clearance (FAILED - 19)
#       calls on #consolidate_cart before calculating the total for two different items (FAILED - 20)
#       calls on #consolidate_cart before calculating the total for two identical items (FAILED - 21)
#       coupons:
#       considers coupons (FAILED - 22)
#       considers coupons and clearance discounts (FAILED - 23)
#       charges full price for items that fall outside of coupon count (FAILED - 24)
#       only applies coupons that meet minimum amount (FAILED - 25)
#     clearance:
#       applies a 20% discount to items on clearance (FAILED - 26)
#       applies a 20% discount to items on clearance but not to non-clearance items (FAILED - 27)
#     discount of ten percent
#       applies 10% discount if cart over $100 (FAILED - 28)
