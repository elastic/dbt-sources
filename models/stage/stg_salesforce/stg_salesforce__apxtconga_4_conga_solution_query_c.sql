
with source as (

    select * from {{ source('raw_salesforce', 'apxtconga_4_conga_solution_query_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        apxtconga_4_alias_c,
        apxtconga_4_comments_c,
        apxtconga_4_conga_query_c,
        apxtconga_4_conga_query_name_c,
        apxtconga_4_conga_solution_c,
        apxtconga_4_pv_0_c,
        apxtconga_4_pv_1_c,
        apxtconga_4_pv_2_c,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
