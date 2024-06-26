# RBAC - Role-Based Access Control

| Role/Permission                           | Visitor | User | Admin  |
|-------------------------------------------|---------|------|--------|
| **Account Management**                    |         |      |        |
| Create account                            | ✅      | ❌   | ❌    |
| Authenticate                              | ❌      | ✅   | ✅    |
| Update username                           | ❌      | ✅   | ❌    |
| Update password                           | ❌      | ✅   | ❌    |
| Change email (if validated)               | ❌      | ✅   | ❌    |
| Validate email (with code)                | ❌      | ✅   | ❌    |
| Suspend account                           | ❌      | ❌   | ✅    |
| Delete account                            | ❌      | ❌   | ✅    |
| **Note Management**                       |         |      |        |
| Create note                               | ❌      | ✅   | ❌    |
| Edit note                                 | ❌      | ✅   | ❌    |
| Edit shared note (with write permissions) | ❌      | ✅   | ❌    |
| View/restore previous note versions       | ❌      | ✅   | ❌    |
| Archive note                              | ❌      | ✅   | ❌    |
| Retrieve archived note                    | ❌      | ✅   | ❌    |
| Share note with friends (read-only/edit)  | ❌      | ✅   | ❌    |
| Sort notes alphabetically                 | ❌      | ✅   | ❌    |
| Sort notes by date                        | ❌      | ✅   | ❌    |
| Filter shared notes                       | ❌      | ✅   | ❌    |
| Filter archived notes                     | ❌      | ✅   | ❌    |
| **Notebook Management**                   |         |      |        |
| Create notebook                           | ❌      | ✅   | ❌    |
| Add notes to notebook                     | ❌      | ✅   | ❌    |
| Delete notebook (archive contained notes) | ❌      | ✅   | ❌    |
| **Friend Management**                     |         |      |        |
| Send friend request                       | ❌      | ✅   | ❌    |
| Accept/decline friend request             | ❌      | ✅   | ❌    |
| Remove friend                             | ❌      | ✅   | ❌    |
| **Admin Management**                      |         |      |        |
| Create admin account                      | ❌      | ❌   | ✅    |
| View activity logs                        | ❌      | ❌   | ✅    |
