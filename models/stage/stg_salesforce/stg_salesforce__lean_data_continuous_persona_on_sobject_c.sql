
with source as (

    select * from {{ source('raw_salesforce', 'lean_data_continuous_persona_on_sobject_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        lean_data_persona_on_new_sobject_c,
        lean_data_persona_on_updated_sobject_c,
        name,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed