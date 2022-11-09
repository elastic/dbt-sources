
with source as (

    select * from {{ source('raw_salesforce', 'default_helpdesk_case_values_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        category_c,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        setup_owner_id,
        subcategory_c,
        system_modstamp

    from source

)

select * from renamed
