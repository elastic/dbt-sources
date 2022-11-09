
with source as (

    select * from {{ source('raw_salesforce', 'link_configuration_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        config_id_c,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp,
        link_label_c,
        url_template_c,
        last_viewed_date,
        last_referenced_date,
        additional_text_c,
        target_c

    from source

)

select * from renamed
