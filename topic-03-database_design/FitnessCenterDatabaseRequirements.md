# Fitness Center Database Requirements

This document describes the logic and entities of the database for comprehensive fitness center management, covering a mobile app for clients, an app for trainers, and an administrative panel.

## 1\. Users, Roles, and Security

To ensure system flexibility and proper separation of access rights, all participants in the system are based on a single user entity with different roles.

- **Single User table:** Stores core data for authorization and identification (registration in the system).
- **Role model:** User, Trainer, and Administrator. The administration manages the system and holds the corresponding access rights.
- **Profile:** Ability to add detailed information about oneself (a bio).
- **Logging (optional):** Designed to allow for a future audit table that records administrator actions (status changes, booking cancellations, etc.).

## 2\. Trainers and Moderation

The system provides dedicated functionality for trainers, accounting for their qualifications and schedule.

- **Categorization:** Trainers are divided into two categories: "personal" and "salaried" (in-house staff).
- **Specializations:** Each trainer may have one or several specializations (e.g., yoga, strength training).
- **Availability:** Trainers maintain their own availability schedule for clients.
- **Documents and moderation:**
  - The system stores only metadata and links to secure cloud storage (Web Cloud) where the trainer's documents are kept.
  - Moderation statuses: Pending, Approved, Rejected, Needs Rework.
- **Trainer finances:** Personal trainers earn a percentage-based payout for sessions conducted. (A detailed financial structure for this will be developed at the conceptual design stage.)

## 3\. Memberships & Billing

Clients have broad options for purchasing various services and managing their subscriptions.

- **Combining memberships:** A user may hold several active memberships at the same time, provided they are of different types (e.g., pool/sauna access + a personal training package + group classes).
- **Restriction:** It is not possible to hold two active memberships of the same type at the same time.
- **Service separation:** An important business rule is that payment for personal training does not include access to the fitness center's halls (this is billed separately).
- **Activity payments:** Tracking of payments for memberships (various types, including VIP) and other fitness center services.

## 4\. Halls, Equipment, and Scheduling

The fitness center maintains a class schedule and several types of rooms, which require strict tracking.

- **Hall types:** Gyms/halls are divided into "standard" and "VIP", each with its own maximum capacity.
- **Room booking logic:**
  - Halls are booked exclusively for group classes.
  - Group classes must always be linked to a specific hall.
  - Personal and self-directed training sessions do not require a mandatory link to a hall.
  - Trainers do not have the rights to book halls on their own.
- **VIP zone and equipment:**
  - VIP clients do not book halls - a separate, dedicated, permanent VIP hall is allocated for them.
  - For VIP clients, trainers can book specific equipment/machines for a set time.
  - Equipment is booked for VIP clients only for the duration of the session.
- **Inventory tracking:** The system tracks available equipment and monitors its condition and maintenance needs.

## 5\. Progress, Nutrition, and Rewards

A gamification and results-tracking module designed to increase client motivation.

- **Progress metrics:** Tracking of physical indicators such as weight and body fat percentage.
- **Nutrition diary:** A simplified system where the user independently logs calories and macronutrients consumed. Special emphasis is placed on protein detail (specifying the source: whey, eggs, chicken, etc.).
- **Reward system:** Non-financial rewards in the form of "badges" for achievements. The date a reward is earned is recorded by the system. VIP clients and clients of personal trainers have access to additional rewards.
- **Automatic rewards:** Issued by the system based on triggers (weight loss, number of completed workouts, performance metrics - speed, weight lifted by number of reps, an uninterrupted attendance streak).
- **Manual rewards (from a trainer):** Motivational badges that a trainer can award to a client for diligence, great work, persistence, and so on.

Additional small discounts are provided for long-term/regular clients.