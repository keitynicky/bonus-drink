class BonusDrink
  BONUS_COUNT = 3
  def self.total_count_for(amount)
    all_empty_count = amount
    while all_empty_count >= BONUS_COUNT do
      new_drink_count, all_empty_count = all_empty_count.divmod(BONUS_COUNT)
      all_empty_count += new_drink_count
      amount += new_drink_count
    end
    return amount
  end
end