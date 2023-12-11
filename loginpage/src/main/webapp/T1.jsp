<!DOCTYPE html>
<html>
<head>
    <title>Book Purchase</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }

        .container {
            max-width: 600px;
            margin: 20px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            color: #333;
            margin-top: 0;
        }

        .book-details {
            border-bottom: 1px solid #ccc;
            padding-bottom: 15px;
            margin-bottom: 15px;
        }

        .book-details h3 {
            margin-top: 0;
            color: #555;
        }

        .book-details p {
            margin: 5px 0;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            margin-bottom: 5px;
            color: #333;
            font-weight: bold;
        }

        .form-group input[type="text"],
        .form-group textarea {
            width: calc(100% - 12px);
            padding: 8px;
            border-radius: 4px;
            border: 1px solid #ccc;
        }

        .quantity {
            display: flex;
            align-items: center;
            margin-bottom: 20px;
        }

        .quantity label {
            margin-right: 10px;
            font-weight: bold;
            color: #333;
        }

        .quantity-btn {
            padding: 5px 10px;
            border-radius: 4px;
            border: 1px solid #ccc;
            background-color: #eee;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .quantity-btn:hover {
            background-color: #ddd;
        }

        .purchase-btn {
            background-color: #4CAF50;
            color: white;
            padding: 12px 24px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 18px;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
            border: none;
            width: 100%;
        }

        .purchase-btn:hover {
            background-color: #45a049;
        }
    </style>
    <script src="https://checkout.razorpay.com/v1/checkout.js"></script>
</head>
<body>
    <div class="container">
        <h2>Book Purchase</h2>
        <div class="book-details">
            <h3>Book Name: <%= request.getParameter("bname") %></h3>
            <p><strong>Author:</strong> <%= request.getParameter("bauth") %></p>
            <p><strong>Price:</strong> <%= request.getParameter("bprice") %></p>
            <p><strong>Pages:</strong> <%= request.getParameter("bpage") %></p>
            <p><strong>Edition:</strong> <%= request.getParameter("bedi") %></p>
        </div>
        <form method="post" action="purchasehandler">
            <div class="form-group">
                <label for="name">Name</label>
                <input type="text" id="name" name="name" required>
            </div>
            <div class="form-group">
                <label for="contact">Contact Number</label>
                <input type="text" id="contact" name="contact" required>
            </div>
            <div class="form-group">
                <label for="address">Address</label>
                <textarea id="address" name="address" required></textarea>
            </div>
            <div class="quantity">
                <label for="quantity">Quantity</label>
                <div class="quantity-control">
                    <button type="button" class="quantity-btn" onclick="decrementQuantity()">-</button>
                    <input type="number" id="quantity" name="quantity" min="1" value="1">
                    <button type="button" class="quantity-btn" onclick="incrementQuantity()">+</button>
                </div>
            </div>
            <input type="hidden" name="bname" value="<%= request.getParameter("bname") %>">
            <input type="hidden" name="bauth" value="<%= request.getParameter("bauth") %>">
            <input type="hidden" name="bprice" value="<%= request.getParameter("bprice") %>">
            <input type="hidden" name="bpage" value="<%= request.getParameter("bpage") %>">
            <input type="hidden" name="bedi" value="<%= request.getParameter("bedi") %>">
            <input type="hidden" name="name" value="<%= request.getParameter("name") %>">
            <input type="hidden" name="contact" value="<%= request.getParameter("contact") %>">
            <input type="hidden" name="address" value="<%= request.getParameter("address") %>">
            <input type="submit" value="Proceed to Payment" class="purchase-btn">
        </form>
    </div>
    <script>
        // Your JavaScript for quantity control and Razorpay integration
        
    function incrementQuantity() {
        var quantityInput = document.getElementById('quantity');
        quantityInput.stepUp();
    }

    function decrementQuantity() {
        var quantityInput = document.getElementById('quantity');
        quantityInput.stepDown();
    }
</script>
<script>
    document.querySelector('.purchase-btn').addEventListener('click', function(e) {
        e.preventDefault();
        var options = {
            key: 'rzp_test_dqJqofaaPi3JD8', // Replace with your actual Razorpay API key
            amount: <%= request.getParameter("bprice") %> * document.getElementById('quantity').value * 100, // Amount in paise (multiply by 100 for rupees)
            currency: 'INR',
            name: 'Book Purchase',
            description: 'Payment for Book',
            image: 'https://your-website.com/logo.png', // Replace with your logo URL
            handler: function(response) {
                // On successful payment, submit form data to your server
                document.querySelector('form').submit();
            },
            prefill: {
                name: 'Yash Bandbe',
                email: 'bandbeyash2001@gmail.com',
                contact: '9999999999'
            },
            notes: {
                // Add any additional notes if required
            },
            theme: {
                color: '#4CAF50'
            }
        };

        var rzp = new Razorpay(options);
        rzp.open();
    });
</script>

</body>
</html>