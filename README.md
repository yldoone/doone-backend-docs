# Doone Backend API Documentation

This repository contains the API documentation for the Doone Backend system, built with Swagger UI.

## 📖 Overview

This documentation provides comprehensive API reference for the Doone order management system, including:

- **User Order Management**: Endpoints for users to manage their orders and appointments
- **Store Order Management**: Endpoints for store staff to manage orders and payments
- **Authentication**: Bearer token authentication for all endpoints
- **Custom Headers**: Required custom headers for API requests

## 🚀 Live Documentation

The documentation is deployed and available at: [https://yifeili.github.io/doone-backend-docs/](https://yifeili.github.io/doone-backend-docs/)

## 📋 API Endpoints

### User Order Endpoints (`/order/order/*`)

| Endpoint | Method | Description |
|----------|--------|-------------|
| `/order/order/myorder` | GET | Get user's order list |
| `/order/order/myappointment` | GET | Get user's appointment list |
| `/order/order/billsInfo` | GET | Get bill details |
| `/order/order/detail` | GET | Get order details |
| `/order/order/delete` | DELETE | Delete order |
| `/order/order/complete` | POST | Mark order as completed |
| `/order/order/cancel` | POST | Cancel order |
| `/order/order/pay` | POST | Mark order as paid |
| `/order/order/comments` | POST | Mark order as evaluated |

### Store Order Endpoints (`/store/order/*`)

| Endpoint | Method | Description |
|----------|--------|-------------|
| `/store/order/list` | GET | Get store's order list |
| `/store/order/pay` | POST | Process store order payment |

## 🔐 Authentication

All API endpoints require Bearer token authentication:

```bash
Authorization: Bearer 0828c1e75e9e49d3ca72eecf699720c7d5cc68e494607661b6b1542fb74a15a2
```

## 📋 Required Headers

All API requests must include these custom headers:

```bash
XX-Device-Type: web
XX-deviceId: test-device-123
XX-appId: __UNI__24E4D78
```

## 🌐 API Base URL

The API base URL format is:
```
http://{host}/api.php?s={endpoint_path}
```

Where `{host}` can be `localhost` or any other server address.

## 📝 Example Usage

### Get User Appointments
```bash
curl -X GET "http://localhost/api.php?s=order/order/myappointment" \
  -H "Authorization: Bearer 0828c1e75e9e49d3ca72eecf699720c7d5cc68e494607661b6b1542fb74a15a2" \
  -H "XX-Device-Type: web" \
  -H "XX-deviceId: test-device-123" \
  -H "XX-appId: __UNI__24E4D78"
```

### Process Store Payment
```bash
curl -X POST "http://localhost/api.php?s=store/order/pay" \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer 0828c1e75e9e49d3ca72eecf699720c7d5cc68e494607661b6b1542fb74a15a2" \
  -H "XX-Device-Type: web" \
  -H "XX-deviceId: test-device-123" \
  -H "XX-appId: __UNI__24E4D78" \
  -d '{
    "pay_member_id": 1002,
    "pay_type_list": [
      {"alias": "coupon", "use": 3002, "use_id": [3002]}
    ],
    "id": [1426715],
    "discount": 0.00,
    "storeDiscount": 0.00,
    "tipRate": 0.00,
    "tipPirce": 0.00,
    "tipCash": 0.00,
    "exempt": 0,
    "is_case_tip": 0,
    "isCash": 0,
    "service_charge": 0.00,
    "payLog": [],
    "useBack": 0,
    "pay_number": "",
    "pay_type": 0
  }'
```

## 🛠️ Local Development

To run this documentation locally:

1. Clone the repository:
```bash
git clone https://github.com/yifeili/doone-backend-docs.git
cd doone-backend-docs
```

2. Serve the files using a local server:
```bash
# Using Python 3
python -m http.server 8000

# Using Node.js
npx serve .

# Using PHP
php -S localhost:8000
```

3. Open your browser and navigate to `http://localhost:8000`

## 📁 Project Structure

```
doone-backend-docs/
├── dist/
│   ├── index.html          # Main Swagger UI page
│   ├── openapi.yaml        # API specification
│   └── swagger-initializer.js  # Swagger UI configuration
├── README.md               # This file
└── .gitignore             # Git ignore file
```

## 🔧 Configuration

The Swagger UI is configured in `dist/swagger-initializer.js` to load the OpenAPI specification from `./openapi.yaml`.

## 📄 License

This documentation is part of the Doone Backend system.

## 🤝 Contributing

To update the API documentation:

1. Modify the `dist/openapi.yaml` file
2. Test the changes locally
3. Commit and push the changes
4. GitHub Pages will automatically deploy the updates

## 📞 Support

For questions about the API or documentation, please contact the development team.
