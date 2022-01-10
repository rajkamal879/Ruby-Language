def authenticate_agent(rank, name, credentials)
  if((rank == "007" && name == "James Bond") || credentials == "Secret Agent")
    puts "access allowed!"
  else
    puts "access denied!"
  end
end

authenticate_agent("007", "James Bond", "Spy")
