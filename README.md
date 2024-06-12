# first_app

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


import React from 'react';

const ColumnOfItems = ({ items }) => {
  return (
    <div>
      {items.map((item, index) => (
        <div key={index} className="mb-3">
          {item}
        </div>
      ))}
    </div>
  );
};

const AdditionalComponent = () => {
  return (
    <div className="ml-3">
      <h2>Additional Component</h2>
      {/* Add your additional component content here */}
    </div>
  );
};

const ParentComponent = () => {
  const items = ['Item 1', 'Item 2', 'Item 3', 'Item 4'];

  return (
    <div className="row">
      <div className="col-md-8">
        <h1>Column of Items</h1>
        <ColumnOfItems items={items} />
      </div>
      <div className="col-md-4">
        <AdditionalComponent />
      </div>
    </div>
  );
};

export default ParentComponent;
