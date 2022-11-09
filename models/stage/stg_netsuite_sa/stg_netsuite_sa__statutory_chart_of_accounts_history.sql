
with source as (

    select * from {{ source('raw_netsuite_sa', 'statutory_chart_of_accounts_history') }}

),

renamed as (

    select
        statutory_chart_of_accounts_id,
        _fivetran_deleted,
        _fivetran_synced,
        account_id,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        name,
        number_0,
        parent_id,
        statutory_chart_of_accounts_ex,
        subsidiary_id,
        partition_date

    from source

)

select * from renamed
