
with source as (

    select * from {{ source('raw_salesforce', 'threat_detection_feedback') }}

),

renamed as (

    select
        id,
        _fivetran_deleted,
        _fivetran_synced,
        created_by_id,
        created_date,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        response,
        system_modstamp,
        threat_detection_event_id,
        threat_detection_feedback_number,
        user_id,
        username

    from source

)

select * from renamed
