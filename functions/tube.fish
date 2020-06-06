function tube
  curl -s https://api.tfl.gov.uk/Line/Mode/tube/Disruption | jq -r ".[].description"
end
