
with source as (

    select * from {{ source('raw_salesforce', 'link_configuration_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        config_id_c,
        created_by_id,
        created_date,
        currency_iso_code,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp,
        additional_text_c,
        last_referenced_date,
        last_viewed_date,
        link_label_c,
        target_c,
        url_template_c

    from source

)

select * from renamed
