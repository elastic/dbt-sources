
with source as (

    select * from {{ source('raw_salesforce', 'authorization_form_data_use') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        authorization_form_id,
        created_by_id,
        created_date,
        data_use_purpose_id,
        is_deleted,
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
