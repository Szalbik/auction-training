class AddCheckConstrainToBids < ActiveRecord::Migration[6.0]
  def up
    connection.execute(%q(
      CREATE OR REPLACE FUNCTION check_if_bigger()
      RETURNS TRIGGER AS
      $$
      BEGIN
        IF NEW.amount <= (SELECT MAX(amount) FROM bids)
          THEN Raise Exception '% is lower than maximum amount', NEW.amount;
        END IF;
        RETURN NEW;
      END;
      $$ LANGUAGE PLpgSQL;

      CREATE TRIGGER check_if_bigger
        AFTER INSERT ON bids FOR EACH ROW
          EXECUTE PROCEDURE check_if_bigger();
    ))
  end
  
  def down
    connection.execute(%q(
      DROP FUNCTION IF EXISTS check_if_bigger();
      DROP TRIGGER check_if_bigger;
    ))
  end
end
