# ✨ Flutter Auth UI – Sign In & Sign Up Screens

This Flutter project demonstrates a clean and responsive authentication interface featuring **Sign In** and **Sign Up** screens. It showcases essential Flutter concepts such as **page navigation**, **form styling**, **social media buttons**, and **rich text formatting**.

---

## 📱 Screens

### 🔐 Sign In Screen
- Input fields for email and password.
- Password visibility toggle using `IconButton`.
- "Forgot Password" link.
- Social login buttons (Facebook & Google).
- Navigation to Sign Up screen.

### 📝 Sign Up Screen
- Fields for name, email, and password.
- `RichText` used for displaying styled inline text with tappable action (`Already have an account?`).
- Social login buttons.
- Terms and conditions disclaimer.

---

## 🚀 Features & Widgets Used

| Feature                        | Description |
|-------------------------------|-------------|
| `TextField`                   | For capturing email, name, and password. |
| `obscureText`                 | Hides password characters. |
| `IconButton (visibility_off)`| Used to toggle password visibility (with `suffixIcon`). |
| `ElevatedButton`             | Styled for "Sign In", "Sign Up", and social buttons. |
| `GestureDetector`            | Enables custom tappable actions for navigation. |
| `RichText` + `TapGestureRecognizer` | Allows tappable inline text within the Sign Up screen. |
| `Navigator.push()`           | Handles screen-to-screen navigation (SignIn ↔ SignUp). |
| Custom widget (`socialButton`) | Reusable widget for social login buttons with icon, color, and text props. |
| `inputDecoration()`          | Custom input decoration with hint and border styling. |

---
🧠 Concepts Practiced
Stateless widget structure
Page routing/navigation
Custom widgets
Flutter layout: Padding, Column, SizedBox, Align
Text and UI formatting with RichText and inline gestures

  ---
📸 Screenshots

<img width="190" alt="image" src="https://github.com/user-attachments/assets/e9cf0de9-f6ce-42d1-a49d-63ea51084cac" />
<img width="179" alt="image" src="https://github.com/user-attachments/assets/e75915ba-5d24-405d-b981-36f9ed4e1d0c" />




