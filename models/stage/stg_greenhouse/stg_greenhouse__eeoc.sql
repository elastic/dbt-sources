
with source as (

    select * from {{ source('raw_greenhouse', 'eeoc') }}

),

renamed as (

    select
        application_id,
        _fivetran_synced,
        disability_status_description,
        disability_status_id,
        gender_description,
        gender_id,
        race_description,
        race_id,
        submitted_at,
        veteran_status_id,
        veteran_status_message,
        veteran_status_description

    from source

)

select * from renamed
