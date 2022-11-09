
with source as (

    select * from {{ source('raw_netsuite_sa', 'nosaft_4_digit_standard_accou') }}

),

renamed as (

    select
        nosaft_4_digit_standard_acc_id,
        _fivetran_deleted,
        _fivetran_synced,
        account_description,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        nosaft_4_digit_standard_acc_ex,
        parent_id,
        standard_account_id,
        account_description_in_englis,
        account_description_in_norweg

    from source

)

select * from renamed
