import matplotlib.pyplot as plt

# Data handling assuming brackets and specific formatting
def read_data(file_path):
    x_vals, y_vals = [], []
    with open(file_path, 'r') as file:
        for line in file:
            # Remove unwanted characters
            clean_line = line.strip().replace('(', '').replace(')', '').replace(',', '')
            if len(clean_line) > 0:
                x, y = map(float, clean_line.split())
                x_vals.append(x)
                y_vals.append(y)
    return x_vals, y_vals

# File path to your data
file_path = 'scaled_pulse_flow.flow'

# Read data
x_vals, y_vals = read_data(file_path)

# Plotting the data
plt.figure(figsize=(10, 5))
plt.plot(x_vals, y_vals, linestyle='-', color='red')
plt.title('Pulsed Flow')
plt.xlabel('Time(s)')
plt.ylabel('Flow Rate(m^3/s)')
plt.grid(True)
plt.show()
