SELECT full_name 
FROM members
WHERE referred_by IS NULL
OR referred_by!=102;
