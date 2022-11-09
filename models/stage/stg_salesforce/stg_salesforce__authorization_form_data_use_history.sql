
with source as (

    select * from {{ source('raw_salesforce', 'authorization_form_data_use_history') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        authorization_form_data_use_id,
        created_by_id,
        created_date,
        data_type,
        field,
        is_deleted,
        new_value,
        old_value,
        authorization_form_id,
        data_use_purpose_id,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
