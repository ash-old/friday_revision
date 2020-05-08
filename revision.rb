
#this method should loop over all friends to see if a given friends name
#exits in the array of friends
#if yes, return true
#if not, return false
def is_friend?(all_friends, friend_name)
  #loop over each friend in friend array
  for friend in all_friends
    # get friends's name
    current_friend_name = friend[:name]
    #if friends's name == friend_name
    if current_friend_name == friend_name
      return true
    end
  end
  #at end of loop, if friend name not found return false
  return false
end
