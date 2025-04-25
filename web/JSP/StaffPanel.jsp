<%-- 
    Document   : StaffPanel
    Created on : Apr 19, 2025, 6:59:00 PM
    Author     : tsm11
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Admin Dashboard</title>
        <link rel="stylesheet" href="../CSS/StaffPanel.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    </head>
    </head>
    <body>
        <div class="sidebar">
            <div class="sidebar-header">
                <i class="fas fa-user-cog"></i>
                <h2>Master Admin</h2>
            </div>
            <div class="menu-item active" data-section="dashboard">
                <i class="fas fa-tachometer-alt"></i>
                <span>Dashboard</span>
            </div>
            <div class="menu-item" data-section="enquiries">
                <i class="fas fa-question-circle"></i>
                <span>Enquiry Management</span>
            </div>
            <div class="menu-item" data-section="team">
                <i class="fas fa-users"></i>
                <span>Team Management</span>
            </div>
            <div class="menu-item" data-section="services">
                <i class="fas fa-concierge-bell"></i>
                <span>Services Management</span>
            </div>
            <div class="menu-item" data-section="portfolio">
                <i class="fas fa-briefcase"></i>
                <span>Portfolio Management</span>
            </div>
            <div class="menu-item" data-section="slider">
                <i class="fas fa-sliders-h"></i>
                <span>Slider Management</span>
            </div>
            <div class="menu-item" data-section="metadata">
                <i class="fas fa-database"></i>
                <span>Metadata</span>
            </div>
            <div class="menu-item" data-section="settings">
                <i class="fas fa-cog"></i>
                <span>Settings</span>
            </div>
        </div>

        <div class="main-content">
            <!-- Dashboard Section -->
            <div id="dashboard" class="content-section active">
                <div class="header">
                    <div class="header-title">
                        <h1>Dashboard</h1>
                        <p>Control Panel</p>
                    </div>
                    <div class="breadcrumb">
                        <a href="#"><i class="fas fa-home"></i> Home</a>
                        <i class="fas fa-chevron-right"></i>
                        <a href="#">Dashboard</a>
                    </div>
                </div>

                <div class="stats-container">
                    <div class="stat-card blue">
                        <h2>4</h2>
                        <p>Total Static Page</p>
                        <div class="more-info">
                            More info <i class="fas fa-arrow-circle-right"></i>
                        </div>
                    </div>

                    <div class="stat-card orange">
                        <h2>15</h2>
                        <p>Total School</p>
                        <div class="more-info">
                            More info <i class="fas fa-arrow-circle-right"></i>
                        </div>
                    </div>

                    <div class="stat-card red">
                        <h2>70</h2>
                        <p>Total Team</p>
                        <div class="more-info">
                            More info <i class="fas fa-arrow-circle-right"></i>
                        </div>
                    </div>

                    <div class="stat-card green">
                        <h2>20</h2>
                        <p>Total Services</p>
                        <div class="more-info">
                            More info <i class="fas fa-arrow-circle-right"></i>
                        </div>
                    </div>

                    <div class="stat-card dark-blue">
                        <h2>30</h2>
                        <p>Total Portfolio</p>
                        <div class="more-info">
                            More info <i class="fas fa-arrow-circle-right"></i>
                        </div>
                    </div>

                    <div class="stat-card pink">
                        <h2>50</h2>
                        <p>Total User</p>
                        <div class="more-info">
                            More info <i class="fas fa-arrow-circle-right"></i>
                        </div>
                    </div>

                    <div class="stat-card teal">
                        <h2>65</h2>
                        <p>Total Enquiries</p>
                        <div class="more-info">
                            More info <i class="fas fa-arrow-circle-right"></i>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Enquiries Section -->
            <div id="enquiries" class="content-section">
                <div class="header">
                    <div class="header-title">
                        <h1>Enquiry Management</h1>
                        <p>Manage all enquiries</p>
                    </div>
                    <div class="breadcrumb">
                        <a href="#"><i class="fas fa-home"></i> Home</a>
                        <i class="fas fa-chevron-right"></i>
                        <a href="#">Enquiry Management</a>
                    </div>
                </div>

                <div class="table-controls">
                    <div class="table-controls-left">
                        <div class="select-container">
                            <select>
                                <option>Entries</option>
                                <option>10</option>
                                <option>25</option>
                                <option>50</option>
                                <option>100</option>
                            </select>
                        </div>
                        <div class="select-container">
                            <select>
                                <option>ID</option>
                                <option>Name</option>
                                <option>Date</option>
                                <option>Amount</option>
                            </select>
                        </div>
                        <button class="btn">
                            <i class="fas fa-plus"></i> Add record
                        </button>
                    </div>
                    <div class="table-controls-right">
                        <div class="search-container">
                            <input type="text" placeholder="Search">
                        </div>
                        <div class="select-container">
                            <select>
                                <option>Status</option>
                                <option>Paid</option>
                                <option>Unpaid</option>
                                <option>All</option>
                            </select>
                        </div>
                    </div>
                </div>

                <table class="data-table">
                    <thead>
                        <tr>
                            <th><i class="fas fa-sort"></i> #</th>
                            <th><i class="fas fa-sort"></i> CLIENT</th>
                            <th><i class="fas fa-sort"></i> TOTAL</th>
                            <th><i class="fas fa-sort"></i> ISSUED DATE</th>
                            <th><i class="fas fa-sort"></i> BALANCE</th>
                            <th>ACTIONS</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="id-column">#5033</td>
                            <td>
                                <div class="client-info">
                                    <div class="client-avatar">
                                        <img src="https://randomuser.me/api/portraits/men/32.jpg" alt="Andrew Bruno">
                                    </div>
                                    <div class="client-details">
                                        <div class="client-name">Andrew Bruno</div>
                                        <div class="client-email">bruno@crossover.org</div>
                                    </div>
                                </div>
                            </td>
                            <td>$3171</td>
                            <td>19 April, 2022</td>
                            <td>-$205</td>
                            <td>
                                <div class="action-buttons">
                                    <button class="action-btn"><i class="fas fa-paper-plane"></i></button>
                                    <button class="action-btn"><i class="fas fa-eye"></i></button>
                                    <button class="action-btn"><i class="fas fa-ellipsis-v"></i></button>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="id-column">#5033</td>
                            <td>
                                <div class="client-info">
                                    <div class="client-avatar">
                                        <img src="https://randomuser.me/api/portraits/women/32.jpg" alt="Exty Bruno">
                                    </div>
                                    <div class="client-details">
                                        <div class="client-name">Exty Bruno</div>
                                        <div class="client-email">exty@crossover.org</div>
                                    </div>
                                </div>
                            </td>
                            <td>$3171</td>
                            <td>19 April, 2022</td>
                            <td>-$205</td>
                            <td>
                                <div class="action-buttons">
                                    <button class="action-btn"><i class="fas fa-paper-plane"></i></button>
                                    <button class="action-btn"><i class="fas fa-eye"></i></button>
                                    <button class="action-btn"><i class="fas fa-ellipsis-v"></i></button>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="id-column">#5033</td>
                            <td>
                                <div class="client-info">
                                    <div class="client-avatar">
                                        <img src="https://randomuser.me/api/portraits/women/32.jpg" alt="Exty Bruno">
                                    </div>
                                    <div class="client-details">
                                        <div class="client-name">Exty Bruno</div>
                                        <div class="client-email">exty@crossover.org</div>
                                    </div>
                                </div>
                            </td>
                            <td>$2171</td>
                            <td>19 April, 2022</td>
                            <td><span class="status-badge status-paid">Paid</span></td>
                            <td>
                                <div class="action-buttons">
                                    <button class="action-btn"><i class="fas fa-paper-plane"></i></button>
                                    <button class="action-btn"><i class="fas fa-eye"></i></button>
                                    <button class="action-btn"><i class="fas fa-ellipsis-v"></i></button>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <!-- Team Management Section -->
            <div id="team" class="content-section">
                <div class="header">
                    <div class="header-title">
                        <h1>Team Management</h1>
                        <p>Manage team members</p>
                    </div>
                    <div class="breadcrumb">
                        <a href="#"><i class="fas fa-home"></i> Home</a>
                        <i class="fas fa-chevron-right"></i>
                        <a href="#">Team Management</a>
                    </div>
                </div>

                <div class="table-controls">
                    <div class="table-controls-left">
                        <div class="select-container">
                            <select>
                                <option>Entries</option>
                                <option>10</option>
                                <option>25</option>
                                <option>50</option>
                                <option>100</option>
                            </select>
                        </div>
                        <div class="select-container">
                            <select>
                                <option>ID</option>
                                <option>Name</option>
                                <option>Position</option>
                                <option>Department</option>
                            </select>
                        </div>
                        <button class="btn">
                            <i class="fas fa-plus"></i> Add team member
                        </button>
                    </div>
                    <div class="table-controls-right">
                        <div class="search-container">
                            <input type="text" placeholder="Search">
                        </div>
                        <div class="select-container">
                            <select>
                                <option>Status</option>
                                <option>Active</option>
                                <option>Inactive</option>
                                <option>All</option>
                            </select>
                        </div>
                    </div>
                </div>

                <table class="data-table">
                    <thead>
                        <tr>
                            <th><i class="fas fa-sort"></i> #</th>
                            <th><i class="fas fa-sort"></i> NAME</th>
                            <th><i class="fas fa-sort"></i> POSITION</th>
                            <th><i class="fas fa-sort"></i> DEPARTMENT</th>
                            <th><i class="fas fa-sort"></i> STATUS</th>
                            <th>ACTIONS</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="id-column">#1001</td>
                            <td>
                                <div class="client-info">
                                    <div class="client-avatar">
                                        <img src="https://randomuser.me/api/portraits/men/42.jpg" alt="John Smith">
                                    </div>
                                    <div class="client-details">
                                        <div class="client-name">John Smith</div>
                                        <div class="client-email">john@example.com</div>
                                    </div>
                                </div>
                            </td>
                            <td>Senior Developer</td>
                            <td>Engineering</td>
                            <td><span class="status-badge status-paid">Active</span></td>
                            <td>
                                <div class="action-buttons">
                                    <button class="action-btn"><i class="fas fa-edit"></i></button>
                                    <button class="action-btn"><i class="fas fa-eye"></i></button>
                                    <button class="action-btn"><i class="fas fa-ellipsis-v"></i></button>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="id-column">#1002</td>
                            <td>
                                <div class="client-info">
                                    <div class="client-avatar">
                                        <img src="https://randomuser.me/api/portraits/women/42.jpg" alt="Sarah Johnson">
                                    </div>
                                    <div class="client-details">
                                        <div class="client-name">Sarah Johnson</div>
                                        <div class="client-email">sarah@example.com</div>
                                    </div>
                                </div>
                            </td>
                            <td>UX Designer</td>
                            <td>Design</td>
                            <td><span class="status-badge status-paid">Active</span></td>
                            <td>
                                <div class="action-buttons">
                                    <button class="action-btn"><i class="fas fa-edit"></i></button>
                                    <button class="action-btn"><i class="fas fa-eye"></i></button>
                                    <button class="action-btn"><i class="fas fa-ellipsis-v"></i></button>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <!-- Services Section -->
            <div id="services" class="content-section">
                <div class="header">
                    <div class="header-title">
                        <h1>Services Management</h1>
                        <p>Manage services</p>
                    </div>
                    <div class="breadcrumb">
                        <a href="#"><i class="fas fa-home"></i> Home</a>
                        <i class="fas fa-chevron-right"></i>
                        <a href="#">Services Management</a>
                    </div>
                </div>

                <div class="table-controls">
                    <div class="table-controls-left">
                        <div class="select-container">
                            <select>
                                <option>Entries</option>
                                <option>10</option>
                                <option>25</option>
                                <option>50</option>
                            </select>
                        </div>
                        <button class="btn">
                            <i class="fas fa-plus"></i> Add service
                        </button>
                    </div>
                    <div class="table-controls-right">
                        <div class="search-container">
                            <input type="text" placeholder="Search">
                        </div>
                        <div class="select-container">
                            <select>
                                <option>Category</option>
                                <option>Web Development</option>
                                <option>Design</option>
                                <option>Marketing</option>
                            </select>
                        </div>
                    </div>
                </div>

                <table class="data-table">
                    <thead>
                        <tr>
                            <th><i class="fas fa-sort"></i> #</th>
                            <th><i class="fas fa-sort"></i> SERVICE NAME</th>
                            <th><i class="fas fa-sort"></i> CATEGORY</th>
                            <th><i class="fas fa-sort"></i> PRICE</th>
                            <th><i class="fas fa-sort"></i> STATUS</th>
                            <th>ACTIONS</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="id-column">#2001</td>
                            <td>Website Development</td>
                            <td>Web Development</td>
                            <td>$1,500</td>
                            <td><span class="status-badge status-paid">Active</span></td>
                            <td>
                                <div class="action-buttons">
                                    <button class="action-btn"><i class="fas fa-edit"></i></button>
                                    <button class="action-btn"><i class="fas fa-eye"></i></button>
                                    <button class="action-btn"><i class="fas fa-ellipsis-v"></i></button>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="id-column">#2002</td>
                            <td>Logo Design</td>
                            <td>Design</td>
                            <td>$500</td>
                            <td><span class="status-badge status-paid">Active</span></td>
                            <td>
                                <div class="action-buttons">
                                    <button class="action-btn"><i class="fas fa-edit"></i></button>
                                    <button class="action-btn"><i class="fas fa-eye"></i></button>
                                    <button class="action-btn"><i class="fas fa-ellipsis-v"></i></button>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <!-- Portfolio Section -->
            <div id="portfolio" class="content-section">
                <!-- Similar structure as other sections -->
                <div class="header">
                    <div class="header-title">
                        <h1>Portfolio Management</h1>
                        <p>Manage portfolio items</p>
                    </div>
                    <div class="breadcrumb">
                        <a href="#"><i class="fas fa-home"></i> Home</a>
                        <i class="fas fa-chevron-right"></i>
                        <a href="#">Portfolio Management</a>
                    </div>
                </div>

                <div class="table-controls">
                    <div class="table-controls-left">
                        <div class="select-container">
                            <select>
                                <option>Entries</option>
                                <option>10</option>
                                <option>25</option>
                                <option>50</option>
                            </select>
                        </div>
                        <button class="btn">
                            <i class="fas fa-plus"></i> Add portfolio
                        </button>
                    </div>
                    <div class="table-controls-right">
                        <div class="search-container">
                            <input type="text" placeholder="Search">
                        </div>
                        <div class="select-container">
                            <select>
                                <option>Category</option>
                                <option>Web</option>
                                <option>Mobile</option>
                                <option>Design</option>
                            </select>
                        </div>
                    </div>
                </div>

                <table class="data-table">
                    <thead>
                        <tr>
                            <th><i class="fas fa-sort"></i> #</th>
                            <th><i class="fas fa-sort"></i> PROJECT NAME</th>
                            <th><i class="fas fa-sort"></i> CATEGORY</th>
                            <th><i class="fas fa-sort"></i> CLIENT</th>
                            <th><i class="fas fa-sort"></i> STATUS</th>
                            <th>ACTIONS</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="id-column">#3001</td>
                            <td>E-commerce Website</td>
                            <td>Web</td>
                            <td>Fashion Store Inc.</td>
                            <td><span class="status-badge status-paid">Completed</span></td>
                            <td>
                                <div class="action-buttons">
                                    <button class="action-btn"><i class="fas fa-edit"></i></button>
                                    <button class="action-btn"><i class="fas fa-eye"></i></button>
                                    <button class="action-btn"><i class="fas fa-ellipsis-v"></i></button>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="id-column">#3002</td>
                            <td>Mobile App</td>
                            <td>Mobile</td>
                            <td>Health Tech Ltd.</td>
                            <td><span class="status-badge status-paid">Completed</span></td>
                            <td>
                                <div class="action-buttons">
                                    <button class="action-btn"><i class="fas fa-edit"></i></button>
                                    <button class="action-btn"><i class="fas fa-eye"></i></button>
                                    <button class="action-btn"><i class="fas fa-ellipsis-v"></i></button>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <!-- Slider Section -->
            <div id="slider" class="content-section">
                <div class="header">
                    <div class="header-title">
                        <h1>Slider Management</h1>
                        <p>Manage slider content</p>
                    </div>
                    <div class="breadcrumb">
                        <a href="#"><i class="fas fa-home"></i> Home</a>
                        <i class="fas fa-chevron-right"></i>
                        <a href="#">Slider Management</a>
                    </div>
                </div>

                <div class="table-controls">
                    <div class="table-controls-left">
                        <div class="select-container">
                            <select>
                                <option>Entries</option>
                                <option>10</option>
                                <option>25</option>
                                <option>50</option>
                            </select>
                        </div>
                        <button class="btn">
                            <i class="fas fa-plus"></i> Add slider
                        </button>
                    </div>
                    <div class="table-controls-right">
                        <div class="search-container">
                            <input type="text" placeholder="Search">
                        </div>
                        <div class="select-container">
                            <select>
                                <option>Status</option>
                                <option>Active</option>
                                <option>Inactive</option>
                            </select>
                        </div>
                    </div>
                </div>

                <table class="data-table">
                    <thead>
                        <tr>
                            <th><i class="fas fa-sort"></i> #</th>
                            <th><i class="fas fa-sort"></i> TITLE</th>
                            <th><i class="fas fa-sort"></i> PAGE</th>
                            <th><i class="fas fa-sort"></i> ORDER</th>
                            <th><i class="fas fa-sort"></i> STATUS</th>
                            <th>ACTIONS</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="id-column">#4001</td>
                            <td>Welcome Slide</td>
                            <td>Home</td>
                            <td>1</td>
                            <td><span class="status-badge status-paid">Active</span></td>
                            <td>
                                <div class="action-buttons">
                                    <button class="action-btn"><i class="fas fa-edit"></i></button>
                                    <button class="action-btn"><i class="fas fa-eye"></i></button>
                                    <button class="action-btn"><i class="fas fa-ellipsis-v"></i></button>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="id-column">#4002</td>
                            <td>Services Slide</td>
                            <td>Services</td>
                            <td>1</td>
                            <td><span class="status-badge status-paid">Active</span></td>
                            <td>
                                <div class="action-buttons">
                                    <button class="action-btn"><i class="fas fa-edit"></i></button>
                                    <button class="action-btn"><i class="fas fa-eye"></i></button>
                                    <button class="action-btn"><i class="fas fa-ellipsis-v"></i></button>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <!-- Metadata Section -->
            <div id="metadata" class="content-section">
                <div class="header">
                    <div class="header-title">
                        <h1>Metadata</h1>
                        <p>Manage site metadata</p>
                    </div>
                    <div class="breadcrumb">
                        <a href="#"><i class="fas fa-home"></i> Home</a>
                        <i class="fas fa-chevron-right"></i>
                        <a href="#">Metadata</a>
                    </div>
                </div>

                <div class="table-controls">
                    <div class="table-controls-left">
                        <div class="select-container">
                            <select>
                                <option>Entries</option>
                                <option>10</option>
                                <option>25</option>
                                <option>50</option>
                            </select>
                        </div>
                        <button class="btn">
                            <i class="fas fa-plus"></i> Add metadata
                        </button>
                    </div>
                    <div class="table-controls-right">
                        <div class="search-container">
                            <input type="text" placeholder="Search">
                        </div>
                        <div class="select-container">
                            <select>
                                <option>Type</option>
                                <option>SEO</option>
                                <option>Social</option>
                                <option>Schema</option>
                            </select>
                        </div>
                    </div>
                </div>

                <table class="data-table">
                    <thead>
                        <tr>
                            <th><i class="fas fa-sort"></i> #</th>
                            <th><i class="fas fa-sort"></i> PAGE</th>
                            <th><i class="fas fa-sort"></i> META TITLE</th>
                            <th><i class="fas fa-sort"></i> TYPE</th>
                            <th><i class="fas fa-sort"></i> LAST UPDATED</th>
                            <th>ACTIONS</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="id-column">#5001</td>
                            <td>Home</td>
                            <td>Welcome to Our Website</td>
                            <td>SEO</td>
                            <td>15 April, 2022</td>
                            <td>
                                <div class="action-buttons">
                                    <button class="action-btn"><i class="fas fa-edit"></i></button>
                                    <button class="action-btn"><i class="fas fa-eye"></i></button>
                                    <button class="action-btn"><i class="fas fa-ellipsis-v"></i></button>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="id-column">#5002</td>
                            <td>About</td>
                            <td>About Our Company</td>
                            <td>SEO</td>
                            <td>16 April, 2022</td>
                            <td>
                                <div class="action-buttons">
                                    <button class="action-btn"><i class="fas fa-edit"></i></button>
                                    <button class="action-btn"><i class="fas fa-eye"></i></button>
                                    <button class="action-btn"><i class="fas fa-ellipsis-v"></i></button>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <!-- Settings Section -->
            <div id="settings" class="content-section">
                <div class="header">
                    <div class="header-title">
                        <h1>Settings</h1>
                        <p>Manage system settings</p>
                    </div>
                    <div class="breadcrumb">
                        <a href="#"><i class="fas fa-home"></i> Home</a>
                        <i class="fas fa-chevron-right"></i>
                        <a href="#">Settings</a>
                    </div>
                </div>

                <div class="table-controls">
                    <div class="table-controls-left">
                        <div class="select-container">
                            <select>
                                <option>Category</option>
                                <option>General</option>
                                <option>Email</option>
                                <option>Security</option>
                            </select>
                        </div>
                        <button class="btn">
                            <i class="fas fa-save"></i> Save Changes
                        </button>
                    </div>
                    <div class="table-controls-right">
                        <div class="search-container">
                            <input type="text" placeholder="Search settings">
                        </div>
                    </div>
                </div>

                <table class="data-table">
                    <thead>
                        <tr>
                            <th><i class="fas fa-sort"></i> SETTING NAME</th>
                            <th><i class="fas fa-sort"></i> CATEGORY</th>
                            <th><i class="fas fa-sort"></i> VALUE</th>
                            <th><i class="fas fa-sort"></i> LAST UPDATED</th>
                            <th>ACTIONS</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Site Title</td>
                            <td>General</td>
                            <td>Master Admin</td>
                            <td>10 April, 2022</td>
                            <td>
                                <div class="action-buttons">
                                    <button class="action-btn"><i class="fas fa-edit"></i></button>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>Admin Email</td>
                            <td>Email</td>
                            <td>admin@example.com</td>
                            <td>12 April, 2022</td>
                            <td>
                                <div class="action-buttons">
                                    <button class="action-btn"><i class="fas fa-edit"></i></button>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <script>
            // JavaScript to handle sidebar menu clicks and show/hide content sections
            document.addEventListener('DOMContentLoaded', function() {
                const menuItems = document.querySelectorAll('.menu-item');
                const contentSections = document.querySelectorAll('.content-section');

                menuItems.forEach(item => {
                    item.addEventListener('click', function() {
                        // Remove active class from all menu items
                        menuItems.forEach(i => i.classList.remove('active'));

                        // Add active class to clicked menu item
                        this.classList.add('active');

                        // Hide all content sections
                        contentSections.forEach(section => {
                            section.classList.remove('active');
                        });

                        // Show the corresponding content section
                        const sectionId = this.getAttribute('data-section');
                        document.getElementById(sectionId).classList.add('active');
                    });
                });

                // Handle "More info" clicks on dashboard cards
                const moreInfoLinks = document.querySelectorAll('.more-info');
                moreInfoLinks.forEach(link => {
                    link.addEventListener('click', function() {
                        const cardType = this.parentElement.querySelector('p').textContent.trim();
                        let sectionToShow = 'dashboard';

                        // Map card types to sections
                        if (cardType === 'Total Enquiries') sectionToShow = 'enquiries';
                        if (cardType === 'Total Team') sectionToShow = 'team';
                        if (cardType === 'Total Services') sectionToShow = 'services';
                        if (cardType === 'Total Portfolio') sectionToShow = 'portfolio';
                        if (cardType === 'Total School') sectionToShow = 'slider';

                        // Trigger click on the corresponding menu item
                        document.querySelector(`.menu-item[data-section="${sectionToShow}"]`).click();
                    });
                });
            });
        </script>
    </body>
    </html>
