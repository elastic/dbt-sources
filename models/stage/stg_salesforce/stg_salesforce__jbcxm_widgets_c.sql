
with source as (

    select * from {{ source('raw_salesforce', 'jbcxm_widgets_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        jbcxm_active_c,
        jbcxm_metadata_c,
        jbcxm_query_option_c,
        jbcxm_system_name_c,
        jbcxm_title_c,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
