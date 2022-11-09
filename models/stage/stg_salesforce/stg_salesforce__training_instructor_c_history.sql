
with source as (

    select * from {{ source('raw_salesforce', 'training_instructor_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        id,
        instructor_c,
        instructor_role_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        milestone_c,
        name,
        system_modstamp

    from source

)

select * from renamed
