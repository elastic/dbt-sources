
with source as (

    select * from {{ source('raw_salesforce', 'jbcxm_gscolor_config_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        jbcxm_color_list_c,
        jbcxm_column_c,
        jbcxm_filters_c,
        jbcxm_object_c,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
