
with source as (

    select * from {{ source('raw_salesforce', 'contact_point_consent_history') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        contact_point_consent_id,
        created_by_id,
        created_date,
        data_type,
        field,
        is_deleted,
        new_value,
        old_value

    from source

)

select * from renamed
