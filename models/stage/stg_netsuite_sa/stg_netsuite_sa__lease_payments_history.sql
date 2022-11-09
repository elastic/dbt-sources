
with source as (

    select * from {{ source('raw_netsuite_sa', 'lease_payments_history') }}

),

renamed as (

    select
        lease_payments_id,
        _fivetran_deleted,
        _fivetran_synced,
        balance,
        contract_id,
        date_0,
        date_created,
        date_deleted,
        interest,
        is_inactive,
        journal_id,
        last_modified_date,
        lease_id,
        lease_payment,
        lease_payments_extid,
        net_present_value,
        parent_id,
        principal,
        partition_date

    from source

)

select * from renamed
