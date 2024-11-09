Create database BazarUniversal;

Use BazarUniversal;

IF OBJECT_ID('items', 'U') IS NOT NULL
    DROP TABLE items;

IF OBJECT_ID('images', 'U') IS NOT NULL
    DROP TABLE images;

CREATE TABLE items (
    id INT PRIMARY KEY,
    title NVARCHAR(255),
    description NVARCHAR(MAX),
    price DECIMAL(10, 2),
    discountPercentage DECIMAL(5, 2),
    rating DECIMAL(3, 2),
    stock INT,
    brand NVARCHAR(100),
    category NVARCHAR(100),
    thumbnail NVARCHAR(255)
);

CREATE TABLE images (
    image_id INT IDENTITY PRIMARY KEY,
    item_id INT,
    image_url NVARCHAR(255),
    FOREIGN KEY (item_id) REFERENCES items(id)
);

CREATE TABLE sales (
	sale_id INT IDENTITY PRIMARY KEY,
	sales_title NVARCHAR(255),
	sales_price DECIMAL(10, 2)
);


INSERT INTO items (id, title, description, price, discountPercentage, rating, stock, brand, category, thumbnail) VALUES
(1, 'iPhone 9', 'An apple mobile which is nothing like apple', 549, 12.96, 4.69, 94, 'Apple', 'smartphones', 'https://i.dummyjson.com/data/products/1/thumbnail.jpg'),
(2, 'iPhone X', 'SIM-Free, Model A19211 6.5-inch Super Retina HD display with OLED technology A12 Bionic chip with ...', 899, 17.94, 4.44, 34, 'Apple', 'smartphones', 'https://i.dummyjson.com/data/products/2/thumbnail.jpg'),
(3, 'Samsung Universe 9', 'Samsung''s new variant which goes beyond Galaxy to the Universe', 1249, 15.46, 4.09, 36, 'Samsung', 'smartphones', 'https://i.dummyjson.com/data/products/3/thumbnail.jpg'),
(4, 'OPPOF19', 'OPPO F19 is officially announced on April 2021.', 280, 17.91, 4.3, 123, 'OPPO', 'smartphones', 'https://i.dummyjson.com/data/products/4/thumbnail.jpg'),
(5, 'Huawei P30', 'Huawei’s re-badged P30 Pro New Edition was officially unveiled yesterday in Germany and now the device has made its way to the UK.', 499, 10.58, 4.09, 32, 'Huawei', 'smartphones', 'https://i.dummyjson.com/data/products/5/thumbnail.jpg'),
(6, 'MacBook Pro', 'MacBook Pro 2021 with mini-LED display may launch between September, November', 1749, 11.02, 4.57, 83, 'Apple', 'laptops', 'https://i.dummyjson.com/data/products/6/thumbnail.png'),
(7, 'Samsung Galaxy Book', 'Samsung Galaxy Book S (2020) Laptop With Intel Lakefield Chip, 8GB of RAM Launched', 1499, 4.15, 4.25, 50, 'Samsung', 'laptops', 'https://i.dummyjson.com/data/products/7/thumbnail.jpg'),
(8, 'Microsoft Surface Laptop 4', 'Style and speed. Stand out on HD video calls backed by Studio Mics. Capture ideas on the vibrant touchscreen.', 1499, 10.23, 4.43, 68, 'Microsoft Surface', 'laptops', 'https://i.dummyjson.com/data/products/8/thumbnail.jpg'),
(9, 'Infinix INBOOK', 'Infinix Inbook X1 Ci3 10th 8GB 256GB 14 Win10 Grey – 1 Year Warranty', 1099, 11.83, 4.54, 96, 'Infinix', 'laptops', 'https://i.dummyjson.com/data/products/9/thumbnail.jpg'),
(10, 'HP Pavilion 15-DK1056WM', 'HP Pavilion 15-DK1056WM Gaming Laptop 10th Gen Core i5, 8GB, 256GB SSD, GTX 1650 4GB, Windows 10', 1099, 6.18, 4.43, 89, 'HP Pavilion', 'laptops', 'https://i.dummyjson.com/data/products/10/thumbnail.jpeg'),
(11, 'perfume Oil', 'Mega Discount, Impression of Acqua Di Gio by GiorgioArmani concentrated attar perfume Oil', 13, 8.4, 4.26, 65, 'Impression of Acqua Di Gio', 'fragrances', 'https://i.dummyjson.com/data/products/11/thumbnail.jpg'),
(12, 'Brown Perfume', 'Royal_Mirage Sport Brown Perfume for Men & Women - 120ml', 40, 15.66, 4.0, 52, 'Royal_Mirage', 'fragrances', 'https://i.dummyjson.com/data/products/12/thumbnail.jpg'),
(13, 'Fog Scent Xpressio Perfume', 'Product details of Best Fog Scent Xpressio Perfume 100ml For Men cool long lasting perfumes for Men', 13, 8.14, 4.59, 61, 'Fog Scent Xpressio', 'fragrances', 'https://i.dummyjson.com/data/products/13/thumbnail.webp'),
(14, 'Non-Alcoholic Concentrated Perfume Oil', 'Original Al Munakh® by Mahal Al Musk | Our Impression of Climate | 6ml Non-Alcoholic Concentrated Perfume Oil', 120, 15.6, 4.21, 114, 'Al Munakh', 'fragrances', 'https://i.dummyjson.com/data/products/14/thumbnail.jpg'),
(15, 'Eau De Perfume Spray', 'Genuine  Al-Rehab spray perfume from UAE/Saudi Arabia/Yemen High Quality', 30, 10.99, 4.7, 105, 'Lord - Al-Rehab', 'fragrances', 'https://i.dummyjson.com/data/products/15/thumbnail.jpg'),
(16, 'Hyaluronic Acid Serum', 'L''OrÃ©al Paris introduces Hyaluron Expert Replumping Serum formulated with 1.5% Hyaluronic Acid', 19, 13.31, 4.83, 110, 'L''Oreal Paris', 'skincare', 'https://i.dummyjson.com/data/products/16/thumbnail.jpg'),
(17, 'Tree Oil 30ml', 'Tea tree oil contains a number of compounds, including terpinen-4-ol, that have been shown to kill certain bacteria,', 12, 4.09, 4.52, 78, 'Hemani Tea', 'skincare', 'https://i.dummyjson.com/data/products/17/thumbnail.jpg'),
(18, 'Oil Free Moisturizer 100ml', 'Dermive Oil Free Moisturizer with SPF 20 is specifically formulated with ceramides, hyaluronic acid & sunscreen.', 40, 13.1, 4.56, 88, 'Dermive', 'skincare', 'https://i.dummyjson.com/data/products/18/thumbnail.jpg'),
(19, 'Skin Beauty Serum.', 'Product name: rorec collagen hyaluronic acid white face serum riceNet weight: 15 m', 46, 10.68, 4.42, 54, 'ROREC White Rice', 'skincare', 'https://i.dummyjson.com/data/products/19/thumbnail.jpg'),
(20, 'Freckle Treatment Cream- 15gm', 'Fair & Clear is Pakistan''s only pure Freckle cream which helpsfade Freckles, Darkspots and pigments. Mercury level is 0%, so there are no side effects.', 70, 16.99, 4.06, 140, 'Fair & Clear', 'skincare', 'https://i.dummyjson.com/data/products/20/thumbnail.jpg'),
(21, '- Daal Masoor 500 grams', 'Fine quality Branded Product Keep in a cool and dry place', 20, 4.81, 4.44, 133, 'Saaf & Khaas', 'groceries', 'https://i.dummyjson.com/data/products/21/thumbnail.png'),
(22, 'Elbow Macaroni - 400 gm', 'Product details of Bake Parlor Big Elbow Macaroni - 400 gm', 14, 15.58, 4.57, 146, 'Bake Parlor Big', 'groceries', 'https://i.dummyjson.com/data/products/22/thumbnail.jpg'),
(23, 'Orange Essence Food Flavour', 'Specifications of Orange Essence Food Flavour For Cakes and Baking Food Item', 14, 8.04, 4.85, 26, 'Baking Food Items', 'groceries', 'https://i.dummyjson.com/data/products/23/thumbnail.jpg'),
(24, 'cereals muesli fruit nuts', 'original fauji cereal muesli 250gm box pack original fauji cereals muesli fruit nuts flakes breakfast cereal break fast faujicereals cerels cerel foji fouji', 46, 16.8, 4.94, 113, 'fauji', 'groceries', 'https://i.dummyjson.com/data/products/24/thumbnail.jpg'),
(25, 'Gulab Powder 50 Gram', 'Dry Rose Flower Powder Gulab Powder 50 Gram • Treats Wounds', 70, 13.58, 4.87, 47, 'Dry Rose', 'groceries', 'https://i.dummyjson.com/data/products/25/thumbnail.jpg'),
(26, 'Plant Hanger For Home', 'Boho Decor Plant Hanger For Home Wall Decoration Macrame Wall Hanging Shelf', 41, 17.86, 4.08, 131, 'Boho Decor', 'home-decoration', 'https://i.dummyjson.com/data/products/26/thumbnail.jpg'),
(27, 'Flying Wooden Bird', 'Package Include 6 Birds with Adhesive Tape Shape: 3D Shaped Wooden Birds Material: Wooden MDF, Laminated 3.5mm', 51, 15.58, 4.41, 17, 'Flying Wooden', 'home-decoration', 'https://i.dummyjson.com/data/products/27/thumbnail.webp'),
(28, '3D Embellishment Art Lamp', '3D led lamp sticker Wall sticker 3d wall art light on/off button cell operated (included)', 20, 16.49, 4.82, 54, 'LED Lights', 'home-decoration', 'https://i.dummyjson.com/data/products/28/thumbnail.jpg'),
(29, 'Handcraft Chinese style', 'Handcraft Chinese style art luxury palace hotel villa mansion home decor ceramic vase with brass fruit plate', 60, 15.34, 4.44, 7, 'luxury palace', 'home-decoration', 'https://i.dummyjson.com/data/products/29/thumbnail.webp'),
(30, 'Key Holder', 'Attractive DesignMetallic materialFour key hooksReliable & DurablePremium Quality', 30, 2.92, 4.92, 54, 'Golden', 'home-decoration', 'https://i.dummyjson.com/data/products/30/thumbnail.jpg');

-- Imágenes para el producto con id 1
INSERT INTO images (item_id, image_url) VALUES
(1, 'https://i.dummyjson.com/data/products/1/1.jpg'),
(1, 'https://i.dummyjson.com/data/products/1/2.jpg'),
(1, 'https://i.dummyjson.com/data/products/1/3.jpg'),
(1, 'https://i.dummyjson.com/data/products/1/4.jpg'),
(1, 'https://i.dummyjson.com/data/products/1/thumbnail.jpg');

-- Imágenes para el producto con id 2
INSERT INTO images (item_id, image_url) VALUES
(2, 'https://i.dummyjson.com/data/products/2/1.jpg'),
(2, 'https://i.dummyjson.com/data/products/2/2.jpg'),
(2, 'https://i.dummyjson.com/data/products/2/3.jpg'),
(2, 'https://i.dummyjson.com/data/products/2/thumbnail.jpg');

-- Imágenes para el producto con id 3
INSERT INTO images (item_id, image_url) VALUES
(3, 'https://i.dummyjson.com/data/products/3/1.jpg');

-- Imágenes para el producto con id 4
INSERT INTO images (item_id, image_url) VALUES
(4, 'https://i.dummyjson.com/data/products/4/1.jpg'),
(4, 'https://i.dummyjson.com/data/products/4/2.jpg'),
(4, 'https://i.dummyjson.com/data/products/4/3.jpg'),
(4, 'https://i.dummyjson.com/data/products/4/4.jpg'),
(4, 'https://i.dummyjson.com/data/products/4/thumbnail.jpg');

-- Imágenes para el producto con id 5
INSERT INTO images (item_id, image_url) VALUES
(5, 'https://i.dummyjson.com/data/products/5/1.jpg'),
(5, 'https://i.dummyjson.com/data/products/5/2.jpg'),
(5, 'https://i.dummyjson.com/data/products/5/3.jpg');

-- Imágenes para el producto con id 6
INSERT INTO images (item_id, image_url) VALUES
(6, 'https://i.dummyjson.com/data/products/6/1.png'),
(6, 'https://i.dummyjson.com/data/products/6/2.jpg'),
(6, 'https://i.dummyjson.com/data/products/6/3.png'),
(6, 'https://i.dummyjson.com/data/products/6/4.jpg');

-- Imágenes para el producto con id 7
INSERT INTO images (item_id, image_url) VALUES
(7, 'https://i.dummyjson.com/data/products/7/1.jpg'),
(7, 'https://i.dummyjson.com/data/products/7/2.jpg'),
(7, 'https://i.dummyjson.com/data/products/7/3.jpg'),
(7, 'https://i.dummyjson.com/data/products/7/thumbnail.jpg');

-- Imágenes para el producto con id 8
INSERT INTO images (item_id, image_url) VALUES
(8, 'https://i.dummyjson.com/data/products/8/1.jpg'),
(8, 'https://i.dummyjson.com/data/products/8/2.jpg'),
(8, 'https://i.dummyjson.com/data/products/8/3.jpg'),
(8, 'https://i.dummyjson.com/data/products/8/4.jpg'),
(8, 'https://i.dummyjson.com/data/products/8/thumbnail.jpg');

-- Imágenes para el producto con id 9
INSERT INTO images (item_id, image_url) VALUES
(9, 'https://i.dummyjson.com/data/products/9/1.jpg'),
(9, 'https://i.dummyjson.com/data/products/9/2.png'),
(9, 'https://i.dummyjson.com/data/products/9/3.png'),
(9, 'https://i.dummyjson.com/data/products/9/4.jpg'),
(9, 'https://i.dummyjson.com/data/products/9/thumbnail.jpg');

-- Imágenes para el producto con id 10
INSERT INTO images (item_id, image_url) VALUES
(10, 'https://i.dummyjson.com/data/products/10/1.jpg'),
(10, 'https://i.dummyjson.com/data/products/10/2.jpg'),
(10, 'https://i.dummyjson.com/data/products/10/3.jpg'),
(10, 'https://i.dummyjson.com/data/products/10/thumbnail.jpeg');

-- Imágenes para el producto con id 11
INSERT INTO images (item_id, image_url) VALUES
(11, 'https://i.dummyjson.com/data/products/11/1.jpg'),
(11, 'https://i.dummyjson.com/data/products/11/2.jpg'),
(11, 'https://i.dummyjson.com/data/products/11/3.jpg'),
(11, 'https://i.dummyjson.com/data/products/11/thumbnail.jpg');

-- Imágenes para el producto con id 12
INSERT INTO images (item_id, image_url) VALUES
(12, 'https://i.dummyjson.com/data/products/12/1.jpg'),
(12, 'https://i.dummyjson.com/data/products/12/2.jpg'),
(12, 'https://i.dummyjson.com/data/products/12/3.png'),
(12, 'https://i.dummyjson.com/data/products/12/4.jpg'),
(12, 'https://i.dummyjson.com/data/products/12/thumbnail.jpg');

-- Imágenes para el producto con id 13
INSERT INTO images (item_id, image_url) VALUES
(13, 'https://i.dummyjson.com/data/products/13/1.jpg'),
(13, 'https://i.dummyjson.com/data/products/13/2.png'),
(13, 'https://i.dummyjson.com/data/products/13/3.jpg'),
(13, 'https://i.dummyjson.com/data/products/13/4.jpg'),
(13, 'https://i.dummyjson.com/data/products/13/thumbnail.webp');

-- Imágenes para el producto con id 14
INSERT INTO images (item_id, image_url) VALUES
(14, 'https://i.dummyjson.com/data/products/14/1.jpg'),
(14, 'https://i.dummyjson.com/data/products/14/2.jpg'),
(14, 'https://i.dummyjson.com/data/products/14/3.jpg'),
(14, 'https://i.dummyjson.com/data/products/14/thumbnail.jpg');

-- Imágenes para el producto con id 15
INSERT INTO images (item_id, image_url) VALUES
(15, 'https://i.dummyjson.com/data/products/15/1.jpg'),
(15, 'https://i.dummyjson.com/data/products/15/2.jpg'),
(15, 'https://i.dummyjson.com/data/products/15/3.jpg'),
(15, 'https://i.dummyjson.com/data/products/15/4.jpg'),
(15, 'https://i.dummyjson.com/data/products/15/thumbnail.jpg');

-- Imágenes para el producto con id 16
INSERT INTO images (item_id, image_url) VALUES
(16, 'https://i.dummyjson.com/data/products/16/1.png'),
(16, 'https://i.dummyjson.com/data/products/16/2.webp'),
(16, 'https://i.dummyjson.com/data/products/16/3.jpg'),
(16, 'https://i.dummyjson.com/data/products/16/4.jpg'),
(16, 'https://i.dummyjson.com/data/products/16/thumbnail.jpg');

-- Imágenes para el producto con id 17
INSERT INTO images (item_id, image_url) VALUES
(17, 'https://i.dummyjson.com/data/products/17/1.jpg'),
(17, 'https://i.dummyjson.com/data/products/17/2.jpg'),
(17, 'https://i.dummyjson.com/data/products/17/3.jpg'),
(17, 'https://i.dummyjson.com/data/products/17/thumbnail.jpg');

-- Imágenes para el producto con id 18
INSERT INTO images (item_id, image_url) VALUES
(18, 'https://i.dummyjson.com/data/products/18/1.jpg'),
(18, 'https://i.dummyjson.com/data/products/18/2.jpg'),
(18, 'https://i.dummyjson.com/data/products/18/3.jpg'),
(18, 'https://i.dummyjson.com/data/products/18/4.jpg'),
(18, 'https://i.dummyjson.com/data/products/18/thumbnail.jpg');

-- Imágenes para el producto con id 19
INSERT INTO images (item_id, image_url) VALUES
(19, 'https://i.dummyjson.com/data/products/19/1.jpg'),
(19, 'https://i.dummyjson.com/data/products/19/2.jpg'),
(19, 'https://i.dummyjson.com/data/products/19/3.png'),
(19, 'https://i.dummyjson.com/data/products/19/thumbnail.jpg');

-- Imágenes para el producto con id 20
INSERT INTO images (item_id, image_url) VALUES
(20, 'https://i.dummyjson.com/data/products/20/1.jpg'),
(20, 'https://i.dummyjson.com/data/products/20/2.jpg'),
(20, 'https://i.dummyjson.com/data/products/20/3.jpg'),
(20, 'https://i.dummyjson.com/data/products/20/4.jpg'),
(20, 'https://i.dummyjson.com/data/products/20/thumbnail.jpg');

-- Imágenes para el producto con id 21
INSERT INTO images (item_id, image_url) VALUES
(21, 'https://i.dummyjson.com/data/products/21/1.png'),
(21, 'https://i.dummyjson.com/data/products/21/2.jpg'),
(21, 'https://i.dummyjson.com/data/products/21/3.jpg');

-- Imágenes para el producto con id 22
INSERT INTO images (item_id, image_url) VALUES
(22, 'https://i.dummyjson.com/data/products/22/1.jpg'),
(22, 'https://i.dummyjson.com/data/products/22/2.jpg'),
(22, 'https://i.dummyjson.com/data/products/22/3.jpg');

-- Imágenes para el producto con id 23
INSERT INTO images (item_id, image_url) VALUES
(23, 'https://i.dummyjson.com/data/products/23/1.jpg'),
(23, 'https://i.dummyjson.com/data/products/23/2.jpg'),
(23, 'https://i.dummyjson.com/data/products/23/3.jpg'),
(23, 'https://i.dummyjson.com/data/products/23/4.jpg'),
(23, 'https://i.dummyjson.com/data/products/23/thumbnail.jpg');

-- Imágenes para el producto con id 24
INSERT INTO images (item_id, image_url) VALUES
(24, 'https://i.dummyjson.com/data/products/24/1.jpg'),
(24, 'https://i.dummyjson.com/data/products/24/2.jpg'),
(24, 'https://i.dummyjson.com/data/products/24/3.jpg'),
(24, 'https://i.dummyjson.com/data/products/24/4.jpg'),
(24, 'https://i.dummyjson.com/data/products/24/thumbnail.jpg');

-- Imágenes para el producto con id 25
INSERT INTO images (item_id, image_url) VALUES
(25, 'https://i.dummyjson.com/data/products/25/1.png'),
(25, 'https://i.dummyjson.com/data/products/25/2.jpg'),
(25, 'https://i.dummyjson.com/data/products/25/3.png'),
(25, 'https://i.dummyjson.com/data/products/25/4.jpg'),
(25, 'https://i.dummyjson.com/data/products/25/thumbnail.jpg');

-- Imágenes para el producto con id 26
INSERT INTO images (item_id, image_url) VALUES
(26, 'https://i.dummyjson.com/data/products/26/1.jpg'),
(26, 'https://i.dummyjson.com/data/products/26/2.jpg'),
(26, 'https://i.dummyjson.com/data/products/26/3.jpg'),
(26, 'https://i.dummyjson.com/data/products/26/4.jpg'),
(26, 'https://i.dummyjson.com/data/products/26/5.jpg'),
(26, 'https://i.dummyjson.com/data/products/26/thumbnail.jpg');

-- Imágenes para el producto con id 27
INSERT INTO images (item_id, image_url) VALUES
(27, 'https://i.dummyjson.com/data/products/27/1.jpg'),
(27, 'https://i.dummyjson.com/data/products/27/2.jpg'),
(27, 'https://i.dummyjson.com/data/products/27/3.jpg'),
(27, 'https://i.dummyjson.com/data/products/27/4.jpg'),
(27, 'https://i.dummyjson.com/data/products/27/thumbnail.webp');

-- Imágenes para el producto con id 28
INSERT INTO images (item_id, image_url) VALUES
(28, 'https://i.dummyjson.com/data/products/28/1.jpg'),
(28, 'https://i.dummyjson.com/data/products/28/2.jpg'),
(28, 'https://i.dummyjson.com/data/products/28/3.png'),
(28, 'https://i.dummyjson.com/data/products/28/4.jpg'),
(28, 'https://i.dummyjson.com/data/products/28/thumbnail.jpg');

-- Imágenes para el producto con id 29
INSERT INTO images (item_id, image_url) VALUES
(29, 'https://i.dummyjson.com/data/products/29/1.jpg'),
(29, 'https://i.dummyjson.com/data/products/29/2.jpg'),
(29, 'https://i.dummyjson.com/data/products/29/3.webp'),
(29, 'https://i.dummyjson.com/data/products/29/4.webp'),
(29, 'https://i.dummyjson.com/data/products/29/thumbnail.webp');

-- Imágenes para el producto con id 30
INSERT INTO images (item_id, image_url) VALUES
(30, 'https://i.dummyjson.com/data/products/30/1.jpg'),
(30, 'https://i.dummyjson.com/data/products/30/2.jpg'),
(30, 'https://i.dummyjson.com/data/products/30/3.jpg'),
(30, 'https://i.dummyjson.com/data/products/30/thumbnail.jpg');

