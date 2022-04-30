CREATE PROCEDURE calculateRent(vehicleId IN NUMBER, rentAmount OUT NUMBER) AS
  -- variable to hold the number of days
  rentDuration NUMBER;
  BEGIN
    -- fetch dates, calculate the difference in days and assign it to a variable
    SELECT (return_date - rent_date) into rentDuration FROM vehiclerent
    WHERE vehicle_id = vehicleId;
    -- calculate the rent amount assuming the daily rate to be 50 and assign it to output parameter
    rentAmount := rentDuration * 50;
  END;
