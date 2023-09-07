# Development Plan

# Original Narrative

*   Organization / Planning - Phase 1. I think it’s possible to complete phase 1 in January.
    
*   Systems Architecture - Phase 2 is quick, but a distinct phase in that it requires phase 1 to be complete, requirements can’t be change (e.g., archiving, integrations (CMS), etc.).
    
*   New API Framework & Generic Service Abstraction - Phase 3 is where a mock API is thrown together. This takes less than 1 month, and essentially involves in using something like OpenAPI to document what the API is guaranteed to do.
    
*   4a - Screen Mockups, Phase 4b - Modernize Legacy C# Web API, Phase 4c - Implement New Claims System API - Phase 4 is multi-pronged. While a developer or multiple developers are mocking up screens against the mock API, the current C# utilities are modernized and wired up to the mock API. This way, existing logic doesn’t have to be rewritten immediately. Additionally, the mock API is converted to an actual API (claimant endpoints for instance actually are capable of CRUD (Create, Read, Update and Delete) operations). All this time, screens and functionality are being iterated (and tested and vetted) and are not dependent on these other phases.
    
*   Testing - Phase 5, we would actually sit down, try every function from the processes we outlined in phase 1 (or have since discovered) and fix whatever is broken.
    
*   In phase 6, we tell Claims and Claims Admin to use the new system first and revert to the old system if the new system can’t do something.
    
*   Parallel System Usage - Phase 7 Lastly, we archive all the legacy code at the last known working point, shutdown the infrastructure… and you buy another bottle of champagne for the system we have yet to name.
    
*   Phase 8 . . . .
    

Phase 1 - Organization / Planning

Phase 2 - Systems Architecture

Phase 3 - New API Framework & Generic Service Abstraction

Phase 4a - Screen Mockups

Phase 4b - Modernize Legacy C# Web API

Phase 4c - Implement New Claims System API

Phase 5 - Testing

Phase 6 - Parallel System Usage

Phase 7 - Shutdown Legacy EOS Components