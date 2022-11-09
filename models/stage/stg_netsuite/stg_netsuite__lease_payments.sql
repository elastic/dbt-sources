
with source as (

    select * from {{ source('raw_netsuite', 'lease_payments') }}

),

renamed as (

    select
        balance,
        date_0,
        date_created,
        interest,
        is_inactive,
        journal_id,
        last_modified_date,
        lease_payment,
        lease_payments_extid,
        lease_payments_id,
        lease_proposal_id,
        net_present_value,
        parent_id,
        principal

    from source

)

select * from renamed
