
with source as (

    select * from {{ source('raw_salesforce', 'pse_filter_set_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        pse_feature_c,
        pse_is_private_c,
        pse_sobject_c,
        system_modstamp,
        pse_filter_set_name_c,
        pse_filters_c,
        pse_is_default_c,
        pse_related_sobject_id_c

    from source

)

select * from renamed
