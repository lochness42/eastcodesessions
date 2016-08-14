Feature: Test automation demo

Scenario: Show greeting
  Given application has started
  When submit my name
  Then greeting with my name is shown
