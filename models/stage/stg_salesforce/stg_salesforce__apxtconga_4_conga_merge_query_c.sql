
with source as (

    select * from {{ source('raw_salesforce', 'apxtconga_4_conga_merge_query_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        apxtconga_4_description_c,
        apxtconga_4_name_c,
        apxtconga_4_query_c,
        created_by_id,
        created_date,
        currency_iso_code,
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
