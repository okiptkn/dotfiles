/* Show title of unread tabs with red and italic font */
.tab.unread .label {
  color: yellow !important;
  font-style: italic !important;
}

/* Hide new tab button */
.newtab-button-box {
  display: none;
}
#tabbar {
  bottom: 0 !important; /* Eliminate dead space on bottom */
}

/* Add private browsing indicator per tab */
.tab.private-browsing .label:before {
  content: "🕶";
}

/* Hide tab close button */
.tab .closebox {
  display: none;
}

/* Hide favicon on non-pinned tab */
.tab:not(.pinned) .favicon {
/*  transform: scale(0.85);*/
  opacity: 0;
}

.tab .label {
  text-align: right;
  font-size: 15px;
}

.tab .counter {
  color: #E25469;
  font-weight: bold;
  margin-left: 2px;
}

.tab .twisty {
  margin-right: -1.9em;
  position: left;
  z-index: 10000;
  color: #be1932;
}

/* active tab */
.tab.active {
  height: 39px !important;
  background-color: #82C8BB;
}
.tab.active .label {
  font-weight: bold;
  font-size: 16px;
  color: #27292A !important;
}
.tab.active .twisty,
.tab.active .label,
.tab.active .counter {
  color: #27292A;
  font-weight: bold;
}

.tab.active .twisty {
  font-size: 12px;
}

.tab.active .counter {
  margin-left: 2px;
}

/* hover tab */
.tab:hover {
  background: #D9D5A6 !important;
  opacity: 1;
}
.tab:hover .label {
color: #27292A !important;
}
