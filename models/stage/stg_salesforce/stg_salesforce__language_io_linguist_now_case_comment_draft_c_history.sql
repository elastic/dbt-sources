
with source as (

    select * from {{ source('raw_salesforce', 'language_io_linguist_now_case_comment_draft_c_history') }}

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
        system_modstamp,
        language_io_draft_id_c

    from source

)

select * from renamed
