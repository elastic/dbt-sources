
with source as (

    select * from {{ source('raw_netsuite_sa', 'lease_contract') }}

),

renamed as (

    select
        lease_contract_id,
        _fivetran_deleted,
        _fivetran_synced,
        annual_interest_rate,
        date_created,
        date_deleted,
        effective_date,
        is_inactive,
        last_modified_date,
        lease_contract_extid,
        lease_end_date,
        lease_id,
        lease_term,
        parent_id,
        rental_frequency_id,
        transaction_id

    from source

)

select * from renamed
