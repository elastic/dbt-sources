
with source as (

    select * from {{ source('raw_salesforce', 'language_io_linguist_now_case_comment_extended_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
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
        language_io_comment_body_c

    from source

)

select * from renamed
