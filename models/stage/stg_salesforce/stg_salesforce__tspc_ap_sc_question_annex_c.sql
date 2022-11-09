
with source as (

    select * from {{ source('raw_salesforce', 'tspc_ap_sc_question_annex_c') }}

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
        name,
        system_modstamp,
        tspc_question_c,
        tspc_type_c

    from source

)

select * from renamed
