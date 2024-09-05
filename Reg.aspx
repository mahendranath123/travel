<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Form</title>
    <link rel="stylesheet" href="StyleSheet1.css">
</head>
<body>
    <div class="container">
        <h2>Registration Form</h2>
        <form>
            <div class="form-group">
                <label for="username">Username</label>
                <input type="text" id="username" name="username" required>
                <span class="error-message">*</span>
            </div>
            
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" required>
                <span class="error-message">*</span>
            </div>
            
            <div class="form-group">
                <label for="confirm-password">Confirm Password</label>
                <input type="password" id="confirm-password" name="confirm-password" required>
                <span class="error-message">*</span>
            </div>
            
            <div class="form-group">
                <label for="email">Email ID</label>
                <input type="email" id="email" name="email" required>
                <span class="error-message">*</span>
            </div>
            
            <div class="form-group">
                <label for="dob">Date of Birth</label>
                <input type="text" id="dob" name="dob" required>
                <span class="calendar-icon">
                    <img src="calendar-icon.png" alt="Calendar Icon">
                </span>
            </div>
            
            <div class="form-group">
                <label>Gender</label>
                <input type="radio" id="male" name="gender" value="male" required>
                <label for="male">Male</label>
                <input type="radio" id="female" name="gender" value="female" required>
                <label for="female">Female</label>
            </div>
            
            <div class="form-group">
                <label for="address">Address</label>
                <textarea id="address" name="address" required></textarea>
                <span class="error-message">*</span>
            </div>
            
            <div class="form-group">
                <label for="mobile">Mobile No</label>
                <input type="text" id="mobile" name="mobile" required>
                <span class="error-message">*</span>
            </div>
            
            <div class="form-group">
                <label for="photo">Add Photo</label>
                <input type="file" id="photo" name="photo" class="file-upload">
            </div>
            
            <div class="form-group">
                <input type="submit" value="Submit" class="submit-button">
            </div>
        </form>
    </div>
</body>
</html>