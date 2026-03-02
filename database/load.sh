#!/bin/bash
set -e

psql -U postgres -d pharma <<EOF

\COPY pharmacies(name, location, created_at) FROM '/data/pharmacies.csv' DELIMITER ',' CSV HEADER;
\COPY providers(name, contact_email, created_at) FROM '/data/providers.csv' DELIMITER ',' CSV HEADER;
\COPY medicines(name, category, price, created_at) FROM '/data/medicines.csv' DELIMITER ',' CSV HEADER;
\COPY orders(pharmacy_id, provider_id, status, total_amount, created_at) FROM '/data/orders.csv' DELIMITER ',' CSV HEADER;
\COPY order_items(order_id, medicine_id, quantity, price) FROM '/data/order_items.csv' DELIMITER ',' CSV HEADER;

EOF
