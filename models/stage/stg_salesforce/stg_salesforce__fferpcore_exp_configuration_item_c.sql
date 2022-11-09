
with source as (

    select * from {{ source('raw_salesforce', 'fferpcore_exp_configuration_item_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        fferpcore_item_type_c,
        fferpcore_label_c,
        fferpcore_large_data_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
