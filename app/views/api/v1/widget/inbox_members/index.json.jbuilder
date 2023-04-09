json.payload do
  json.array! @inbox_members do |inbox_member|
    json.id inbox_member.user.id
    json.name inbox_member.user.available_name
    json.azar_display_name inbox_member.user.azar_display_name
    json.mono_display_name inbox_member.user.mono_display_name
    json.gbits_display_name inbox_member.user.gbits_display_name
    json.avatar_url inbox_member.user.avatar_url
    json.availability_status inbox_member.user.account_users.find_by(account_id: @current_account.id).availability_status
  end
end
