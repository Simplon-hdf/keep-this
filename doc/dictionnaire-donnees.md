# Dictionnaire des données

| Entity          | Attribute         | Type     | Description                                                     | Example                               |
|-----------------|-------------------|----------|-----------------------------------------------------------------|---------------------------------------|
| Users           | ID                | UUID     | Unique identifier for the user                                   | 123e4567-e89b-12d3-a456-426614174000  |
|                 | Pseudo            | String   | User's display name                                             | "johndoe123"                          |
|                 | Email             | String   | User's email address                                            | "<johndoe@example.com>"                 |
|                 | Password          | String   | User's hashed password                                          | "hashedPassword123"                   |
|                 | CreatedAt         | DateTime | Date and time when the user account was created                  | "2024-06-25 14:30:00"                 |
| Notes           | ID                | UUID     | Unique identifier for the note                                   | 123e4567-e89b-12d3-a456-426614174001  |
|                 | Content           | Text     | Text content of the note                                         | "Meeting notes..."                    |
|                 | CreatedAt         | DateTime | Date and time when the note was created                          | "2024-06-25 15:00:00"                 |
|                 | ModifiedAt        | DateTime | Date and time when the note was last modified                    | "2024-06-25 15:30:00"                 |
|                 | ArchivedAt        | DateTime | Date and time when the note was archived                         | "2024-06-26 10:00:00"                 |
|                 | OwnerID           | UUID     | ID of the user who owns the note                                 | 123e4567-e89b-12d3-a456-426614174000  |
| Notebooks       | ID                | UUID     | Unique identifier for the notebook                               | 123e4567-e89b-12d3-a456-426614174002  |
|                 | Title             | String   | Title of the notebook                                            | "Work Projects"                       |
|                 | CreatedAt         | DateTime | Date and time when the notebook was created                      | "2024-06-25 16:00:00"                 |
|                 | OwnerID           | UUID     | ID of the user who owns the notebook                             | 123e4567-e89b-12d3-a456-426614174000  |
| Friends-Users   | ID                | UUID     | Unique identifier for the friendship relation between users       | 123e4567-e89b-12d3-a456-426614174003  |
|                 | User1ID           | UUID     | ID of the user who initiates the friend request                  | 123e4567-e89b-12d3-a456-426614174000  |
|                 | User2ID           | UUID     | ID of the user who receives the friend request                   | 123e4567-e89b-12d3-a456-426614174001  |
|                 | idStatus           | String   | Status of the friend request (pending, accepted, declined)       | "accepted"                            |
| Administrators  | ID                | UUID     | Unique identifier for the administrator                          | 123e4567-e89b-12d3-a456-426614174004  |
|                 | Name              | String   | Name of the administrator                                        | "Admin Smith"                         |
|                 | Email             | String   | Email address of the administrator                               | "<admin@example.com>"                   |
|                 | Password          | String   | Administrator's hashed password                                  | "hashedPassword123"                   |
|                 | CreatedAt         | DateTime | Date and time when the administrator account was created         | "2024-06-25 12:00:00"                 |
| Status          | Label             | String   | Descriptive label for a status                                   | "pending", "accepted", " declined"    |
| NoteSharing     | ID                | UUID     | Unique identifier for the note sharing relationship              | 123e4567-e89b-12d3-a456-426614174005  |
|                 | NoteID            | UUID     | ID of the note being shared                                      | 123e4567-e89b-12d3-a456-426614174001  |
|                 | SharedByUserID    | UUID     | ID of the user who shares the note                               | 123e4567-e89b-12d3-a456-426614174000  |
|                 | SharedWithUserID  | UUID     | ID of the user with whom the note is shared                      | 123e4567-e89b-12d3-a456-426614174001  |
|                 | writing-right     | bool   | Permission level for the shared note (read-only or read-write)    | "true" or "false"                     |
|                 | idStatus           | String   | Status of the friend request (pending, accepted, declined)       | "accepted"                            |
