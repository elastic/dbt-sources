
with source as (

    select * from {{ source('raw_salesforce', 'video_call_participant') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        email,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        related_person_id,
        system_modstamp,
        video_call_id

    from source

)

select * from renamed
